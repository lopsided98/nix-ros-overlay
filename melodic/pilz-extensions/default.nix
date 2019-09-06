
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, prbt-support, joint-limits-interface, catkin, rostest, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "d59e1d19b0ad792e1dddc4e62baac229886aa0a6a80833879a4499196e4bf17e";
  };

  buildType = "catkin";
  buildInputs = [ joint-limits-interface roscpp clang ];
  checkInputs = [ rostest prbt-support code-coverage rosunit ];
  propagatedBuildInputs = [ joint-limits-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
