
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-plugins, geometry-msgs, image-transport, laser-geometry, message-filters, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf, tf2, tf2-ros, uuv-gazebo-plugins, uuv-sensor-ros-plugins-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-uuv-sensor-ros-plugins";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_sensor_ros_plugins/0.6.13-0";
        sha256 = "sha256-LZt706D/FPyHqu61qCnA+ZDyNuKubLUvI8S9Bu8rKOw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-dev gazebo-plugins geometry-msgs image-transport laser-geometry message-filters roscpp sensor-msgs std-msgs tf tf2 tf2-ros uuv-gazebo-plugins uuv-sensor-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
