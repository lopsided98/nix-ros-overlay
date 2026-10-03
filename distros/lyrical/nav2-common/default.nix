
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-cmake-test, ament-lint-auto, ament-lint-common, ament-mypy, backward-ros, launch, launch-ros, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-nav2-common";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_common/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "8af78cb60175870522e3ee7262714850648a383dcf375e6e40fb72ccd6848426";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-cmake-ros ament-cmake-test ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest ];
  propagatedBuildInputs = [ ament-cmake-core backward-ros launch launch-ros python3Packages.osrf-pycommon python3Packages.pyyaml python3Packages.types-pyyaml rclpy ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "Common support functionality used throughout the navigation 2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
