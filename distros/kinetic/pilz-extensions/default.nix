
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, joint-limits-interface, prbt-support, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pilz-extensions";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_extensions/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "b15345cbf6fcc4698bb483c730fc73d63014857f1978d771422ab273662072db";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ code-coverage prbt-support rostest rosunit ];
  propagatedBuildInputs = [ joint-limits-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
