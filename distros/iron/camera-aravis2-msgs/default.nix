
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-camera-aravis2-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_aravis2-release/archive/release/iron/camera_aravis2_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "82be22ee2d855fcf1fed577348ca1b772be3e527ab1a3de5392dc846fba3e25b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces diagnostic-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages and service definitions for the camera_aravis2 package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
