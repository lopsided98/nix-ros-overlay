
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mavros-msgs, rclcpp, rclcpp-components, std-msgs, tobas-math, tobas-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cpp-code-style-example";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cpp_code_style_example/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f79ca446cecca826e0eb75e1fb8f4d4fd233f8583e533be2eff14d61fbab5a1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ mavros-msgs rclcpp rclcpp-components std-msgs tobas-math tobas-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package covering the contents described in `CPP_CODE_STYLE.md`.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
