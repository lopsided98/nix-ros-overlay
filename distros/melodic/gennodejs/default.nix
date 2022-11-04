
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-melodic-gennodejs";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/RethinkRobotics-release/gennodejs-release/archive/release/melodic/gennodejs/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "09d5f9ee001d83dd19c111dc8c2d995b9e9a90e21df2a379b882ac555b9bc9b1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Javascript ROS message and service generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
