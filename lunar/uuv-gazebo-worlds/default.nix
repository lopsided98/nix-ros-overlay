
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin }:
buildRosPackage {
  pname = "ros-lunar-uuv-gazebo-worlds";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_gazebo_worlds/0.6.10-0.tar.gz;
    sha256 = "7be7baaf774a9fbebc4b14d2e4cc2e4acf8a568d8ac597543b2057f8b96937d7";
  };

  buildInputs = [ gazebo-ros ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo_worlds package'';
    license = with lib.licenses; [ asl20 ];
  };
}
