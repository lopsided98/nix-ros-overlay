
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, ament-cmake-pytest, dwb-core, launch, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, nav-2d-msgs, nav2-util, rclcpp, nav2-msgs, nav-2d-utils, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dwb-controller";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_controller/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "89270b7d666e5709909ede49a3985ba9c8dcfdab9f6eadd7518d8e267fee3b0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action dwb-core std-msgs nav2-common nav-2d-msgs nav2-util rclcpp nav2-msgs nav-2d-utils ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-action dwb-core std-msgs nav-2d-msgs nav2-util rclcpp nav2-msgs nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
