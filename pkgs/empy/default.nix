{ lib, fetchurl, buildPythonPackage }:

buildPythonPackage rec {
  pname = "empy";
  version = "3.3.4";

  src = fetchurl {
    url = "http://www.alcyone.com/software/empy/empy-${version}.tar.gz";
    sha256 = "1cgikljjcqxgz168prpvb0bnirbdxf9wmgj0vlzzhzzwf4a229li";
  };

  meta = {
    description = "A powerful and robust templating system for Python";
    homepage = http://www.alcyone.com/software/empy/;
  };
}
