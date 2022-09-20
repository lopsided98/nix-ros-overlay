
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-copernicus-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a78a7f39a5ab5918285b4b8e6f8d07db07c8da29ad5754410e28f8123ff70132";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_msgs package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
