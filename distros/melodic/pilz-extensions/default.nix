
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, joint-limits-interface, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-pilz-extensions";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_extensions/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "0c750d40f8d7e22e93f8fa7c4376001989b441e5cf55fa0bc173c011697787f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin roscpp ];
  checkInputs = [ code-coverage rostest ];
  propagatedBuildInputs = [ joint-limits-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_extensions package. Here are classes extending the functionality of other packages.
  On the long run these extensions should become pull requests on the respective packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
