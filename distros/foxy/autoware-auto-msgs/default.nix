
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-autoware-auto-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/autowarefoundation/autoware.auto/autoware_auto_msgs-release/-/archive/release/foxy/autoware_auto_msgs/1.0.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "0ffd2d0d97fcd3d6d9536f11c0b836bc2aadcacd3e4fa388c00cd19aee7fa429";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Interfaces between core Autoware.Auto components'';
    license = with lib.licenses; [ asl20 ];
  };
}
