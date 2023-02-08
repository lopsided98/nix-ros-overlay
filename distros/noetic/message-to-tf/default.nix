
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-message-to-tf";
  version = "0.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_localization-release";
        rev = "release/noetic/message_to_tf/0.4.0-1";
        sha256 = "sha256-4OaET2k/pzb4Uo/uOdcjg6AjOJeF9XKvW1F6kt5BL8E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''message_to_tf translates pose information from different kind of common_msgs message types to tf. Currently the node supports nav_msgs/Odometry, geometry_msgs/PoseStamped and sensor_msgs/Imu messages as input.
    The resulting transform is divided into three subtransforms with intermediate frames for the footprint and the stabilized base frame (without roll and pitch).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
