
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-planning-msgs, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-vehicle-msgs";
  version = "1.11.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/rolling/autoware_vehicle_msgs/1.11.0-2.tar.gz";
    name = "1.11.0-2.tar.gz";
    sha256 = "27a7960b5d7d413dbd14ada65cc21dc2ef81e2f0587ec6439b7a243fc1c5951e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-planning-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Interfaces between core Autoware vehicle components";
    license = with lib.licenses; [ asl20 ];
  };
}
