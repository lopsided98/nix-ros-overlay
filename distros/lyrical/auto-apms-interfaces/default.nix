
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-lyrical-auto-apms-interfaces";
  version = "1.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/lyrical/auto_apms_interfaces/1.5.1-3.tar.gz";
    name = "1.5.1-3.tar.gz";
    sha256 = "5a32dd1de5dda1afe2e828af3b902e5fc21116b38723ecef6f9ec6286335a9ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-copyright ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 interfaces for AutoAPMS";
    license = with lib.licenses; [ asl20 ];
  };
}
