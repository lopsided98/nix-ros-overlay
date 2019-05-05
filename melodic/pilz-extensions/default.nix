
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.3-0.tar.gz;
    sha256 = "74f0565360bf465292bf866c016f5a60513410823efac748cc7c50c893d732f7";
  };

  buildInputs = [ joint-limits-interface roscpp ];
  checkInputs = [ rostest code-coverage rosunit ];
  propagatedBuildInputs = [ prbt-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
