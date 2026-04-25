Name:           lila-hd-icon-theme
Version:        3.3
Release:        2026
Summary:        Professional Lila HD Icon Theme (2026 Edition) 
License:        GPL
URL:            https://github.com/ilnanny75/Lila-HD-Icon-Theme-Official
BuildArch:      noarch
Requires:       adwaita-icon-theme, hicolor-icon-theme

Source0:        lila-hd-icon-theme-2026.tar.gz

%description
Lila HD is a complete and colorful SVG icon theme for Linux desktops. 

%prep
# -n %{name}-%{version} non serve se il tarball non ha una cartella interna col nome versione
# Usiamo -c per scompattare correttamente se il tar contiene direttamente le cartelle Lila_HD
%setup -q -c

%install
mkdir -p %{buildroot}%{_datadir}/icons
cp -a Lila_HD* %{buildroot}%{_datadir}/icons/ 

%post
# Rigenera la cache per tutte le varianti installate
for dir in %{_datadir}/icons/Lila_HD*; do
    if [ -d "$dir" ]; then
        gtk-update-icon-cache -f -t "$dir" >/dev/null 2>&1 || :
    fi
done

%files
%defattr(-,root,root,-)
%{_datadir}/icons/Lila_HD*

%changelog
* Fri Apr 24 2026 ilnanny - 3.3-2026
- Fix errore %files e ottimizzazione build su Fedora
