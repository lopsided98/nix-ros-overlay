
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-core, easynav-sensors, geometry-msgs, nav-msgs, pcl, pluginlib, rclcpp, rclcpp-lifecycle, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-vff-controller";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_vff_controller/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "e6c5bccfefc4a510c7b4ab7801082e90d52dedf2f2f4c79524756a010d586171";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-controller ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors geometry-msgs nav-msgs pcl pluginlib rclcpp rclcpp-lifecycle tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: VFF Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
