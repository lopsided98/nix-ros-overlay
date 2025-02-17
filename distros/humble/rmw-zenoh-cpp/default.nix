
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, fastcdr, rcpputils, rcutils, rmw, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-rmw-zenoh-cpp";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/humble/rmw_zenoh_cpp/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8350bc8b0742de39790555e5b58d1d60454bca37ec07dcdbe3d1b110b6a58f6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp fastcdr rcpputils rcutils rmw rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp zenoh-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 middleware implementation using zenoh-cpp";
    license = with lib.licenses; [ asl20 mit bsdOriginal ];
  };
}
