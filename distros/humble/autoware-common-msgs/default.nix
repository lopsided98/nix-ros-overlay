
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-autoware-common-msgs";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/humble/autoware_common_msgs/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "ea2e5de56a61b69cf55adb0f3db9d11c8ec9f2638c6bdca3764ab69825cf0ede";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware common messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
