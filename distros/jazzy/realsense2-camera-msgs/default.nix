
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-realsense2-camera-msgs";
  version = "4.55.1-r3";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/jazzy/realsense2_camera_msgs/4.55.1-3.tar.gz";
    name = "4.55.1-3.tar.gz";
    sha256 = "fdf59833bbd1268abb3f84361198ac985ad055a5353e485a6ffbc6db5970f8f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "RealSense camera_msgs package containing realsense camera messages definitions";
    license = with lib.licenses; [ asl20 ];
  };
}
