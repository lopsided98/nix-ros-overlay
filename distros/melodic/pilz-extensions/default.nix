
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, joint-limits-interface, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "8706781c11acadf051e68e804aedf2198e855f873198a9d4117c9a415f30d8bf";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ code-coverage rostest ];
  propagatedBuildInputs = [ joint-limits-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
