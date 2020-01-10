
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-ouster-msgs";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/ros2_ouster_drivers-release/archive/release/dashing/ouster_msgs/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "9ef066ac669030c800af120ab7359e8314b9fc9042087b869f87146559fd64d5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 messages for ouster lidar driver'';
    license = with lib.licenses; [ asl20 ];
  };
}
