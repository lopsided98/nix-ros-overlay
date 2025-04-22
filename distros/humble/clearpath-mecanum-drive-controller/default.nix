
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-mecanum-drive-controller";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_mecanum_drive_controller-release/archive/release/humble/clearpath_mecanum_drive_controller/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "5ff432cb169481e05fd76ca38b11f38788787804af3384a1989b04d4791b6cd2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools std-srvs tf2 tf2-geometry-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath fork of mecanum drive controller for 4 wheel drive.";
    license = with lib.licenses; [ asl20 ];
  };
}
