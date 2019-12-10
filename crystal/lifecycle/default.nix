
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp-lifecycle, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-lifecycle";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/lifecycle/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "ba439c587c69ca1c2a3ec569d7e3d9d4995aa98c2e7566ad316e8f6cfd3eaac5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp-lifecycle ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing demos for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
