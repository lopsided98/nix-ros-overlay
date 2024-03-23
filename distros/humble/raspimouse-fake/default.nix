
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-raspimouse-fake";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/humble/raspimouse_fake/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "d1408df1c47df7c882c5f485ffb524b3a2295a2ee8c952810b742c7e52cdd7c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The raspimouse_control package";
    license = with lib.licenses; [ mit ];
  };
}
