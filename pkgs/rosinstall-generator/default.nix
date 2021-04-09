{ lib, buildPythonPackage, fetchPypi, fetchpatch, catkin-pkg, rosdistro, rospkg
, pyyaml, pytestCheckHook }:

buildPythonPackage rec {
  pname = "rosinstall_generator";
  version = "0.1.22";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1idq8xacz7s59mb7aakma3g2w1n89i3dkcdjgzvs221zrncjbli2";
  };

  patches = [
    # Fix GitLab tarball downloads
    (fetchpatch {
      url = "https://github.com/lopsided98/rosinstall_generator/commit/16291631160ba9801ea5b551d6840d692acf1e44.patch";
      sha256 = "0ynbq2n5qd49a72ylcp8cim02b2srmr1956ifp6cww1s1jrvbhgc";
    })
  ];

  propagatedBuildInputs = [ catkin-pkg rosdistro rospkg pyyaml ];

  checkInputs = [ pytestCheckHook ];

  meta = with lib; {
    description = "A tool to generator rosinstall files";
    homepage = "http://wiki.ros.org/rosinstall_generator";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
