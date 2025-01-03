
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-msgs";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_msgs/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "4f9306f91909a8b4a893f0323db97c37166a38aefbbb84066dedc58688be88b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Custom ROS messages for Phidgets drivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
