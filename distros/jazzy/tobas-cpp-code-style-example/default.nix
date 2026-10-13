
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, mavros-msgs, rclcpp, rclcpp-components, std-msgs, tobas-math, tobas-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cpp-code-style-example";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cpp_code_style_example/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "81ed4da8594c061b62f00e610f10c3ebedf11652438c46fe7385eb8201d214cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch launch-ros mavros-msgs rclcpp rclcpp-components std-msgs tobas-math tobas-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package covering the contents described in `CPP_CODE_STYLE.md`.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
