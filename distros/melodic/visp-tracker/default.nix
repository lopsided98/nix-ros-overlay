
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, image-proc, image-transport, message-generation, message-runtime, nodelet, resource-retriever, roscpp, rospy, sensor-msgs, std-msgs, tf, visp }:
buildRosPackage {
  pname = "ros-melodic-visp-tracker";
  version = "0.13.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "lagadic";
        repo = "vision_visp-release";
        rev = "release/melodic/visp_tracker/0.13.0-1";
        sha256 = "sha256-toCy4cpwx9JtKe7F8EhX7xCkBObENHNnBZW0Rccih4c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs image-proc image-transport message-generation message-runtime nodelet resource-retriever roscpp rospy sensor-msgs std-msgs tf visp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps the ViSP moving edge tracker provided by the ViSP visual
    servoing library into a ROS package.

    This computer vision algorithm computes the pose (i.e. position
    and orientation) of an object in an image. It is fast enough to
    allow object online tracking using a camera.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
