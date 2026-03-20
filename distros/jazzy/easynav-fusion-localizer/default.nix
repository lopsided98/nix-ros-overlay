
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, easynav-common, easynav-core, easynav-localizer, geographic-msgs, geographiclib, pluginlib, rclcpp, rclcpp-lifecycle, robot-localization, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-fusion-localizer";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_fusion_localizer/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "6c558c782b309ff660fb7835b31dc1caf677ee6d3c3bca8e08d9fe7e4ba01feb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common robot-localization ];
  propagatedBuildInputs = [ angles easynav-common easynav-core easynav-localizer geographic-msgs geographiclib pluginlib rclcpp rclcpp-lifecycle robot-localization std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Fusion Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
