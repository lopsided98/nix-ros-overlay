
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "199a0a8cc809fe9d2b8816a193e8a7103c6065f89fc51348822510b3da8c2660";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-resources-pr2-description robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
