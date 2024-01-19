
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-base2d-kinematics-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metro_nav-release/archive/release/humble/base2d_kinematics_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "eff43fd05ed76365cb153e8f0334dcc19a02899d886717b3a7e63910c002fade";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces for 2.5D kinematics'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
