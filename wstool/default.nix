{ buildPythonPackage, fetchPypi, vcstools, pyyaml }:

buildPythonPackage rec {
  pname = "wstool";
  version = "0.1.17";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0dz2gn2qx919s1z5wa94nkvb01pnqp945mvj97108w7i1q8lz6y7";
  };

  propagatedBuildInputs = [ vcstools pyyaml ];

  meta = {
    description = "A tool for managing a workspace of multiple heterogenous SCM repositories";
    homepage = http://wiki.ros.org/wstool;
  };
}
