
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, geometry-msgs, ouxt-lint-common, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-fluent-rviz";
  version = "0.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fluent_rviz-release/archive/release/kilted/fluent_rviz/0.0.3-5.tar.gz";
    name = "0.0.3-5.tar.gz";
    sha256 = "3ec97cbe88e94c65731bbb4309247c017931679c7a2dafb22c337cc22db19c96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A library which makes Rviz fluent. Powered by C++17";
    license = with lib.licenses; [ asl20 ];
  };
}
