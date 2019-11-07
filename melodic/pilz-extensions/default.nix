
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "8a4a37650d021dd3a609260406b591e56569f4286fe35f3e11c4c76a131a52d6";
  };

  buildType = "catkin";
  buildInputs = [ joint-limits-interface roscpp ];
  checkInputs = [ rostest prbt-support code-coverage rosunit ];
  propagatedBuildInputs = [ joint-limits-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
