
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-grbl-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_msgs-release/archive/release/dashing/grbl_msgs/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "671637b93b133e1f5ff7886af1b9eb3c5a47eba094d0fb6bdc304b16c60b3242";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Messages package for GRBL devices'';
    license = with lib.licenses; [ mit ];
  };
}
