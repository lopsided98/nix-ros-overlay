
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, lifecycle-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-easynav-localizer";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_localizer/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "c8862a3aed7b452aa8afaceda381e3fa3f9d8657fdaf2112ebcfc8d348e82700";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core lifecycle-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Localizer package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
