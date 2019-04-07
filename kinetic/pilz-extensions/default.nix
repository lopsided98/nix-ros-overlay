
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pilz-extensions";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_extensions/0.3.6-0.tar.gz;
    sha256 = "4284c41c8d4d1195b347dcd03f92b6854fdb6c4cd65a564931981b982ab39a47";
  };

  buildInputs = [ joint-limits-interface roscpp ];
  checkInputs = [ rostest code-coverage rosunit ];
  propagatedBuildInputs = [ prbt-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    #license = lib.licenses.Apache 2.0;
  };
}
