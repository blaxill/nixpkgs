{ stdenv, fetchurl, aspell, pkgconfig, glib, hunspell, hspell }:

stdenv.mkDerivation rec {
  name = "${pname}-${version}";
  version = "1.6.0";
  pname = "enchant";

  src = fetchurl {
    url = "http://www.abisource.com/downloads/${pname}/${version}/${name}.tar.gz";
    sha256 = "0zq9yw1xzk8k9s6x83n1f9srzcwdavzazn3haln4nhp9wxxrxb1g";
  };

  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ aspell glib hunspell hspell ];

  meta = with stdenv.lib; {
    description = "Generic spell checking library";
    homepage = http://www.abisource.com/enchant;
    platforms = platforms.unix;
    license = licenses.lgpl21;
  };
}
