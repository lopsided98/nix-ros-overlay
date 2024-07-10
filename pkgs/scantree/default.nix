{ lib, buildPythonPackage, fetchPypi, attrs, pathspec, six }:

buildPythonPackage rec {
  pname = "scantree";
  version = "0.0.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-KosWPeDksvnk83+Mrz8LJlFyu/F0ER4b68eVVYGJWzk=";
  };

  propagatedBuildInputs = [ attrs pathspec six ];

  doCheck = false;

  meta = with lib; {
    description = "Flexible recursive directory iterator: scandir meets glob(\"**\", recursive=True)";
    homepage = "https://github.com/andhus/scantree";
    license = licenses.mit;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
