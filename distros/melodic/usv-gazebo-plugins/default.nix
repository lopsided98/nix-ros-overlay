
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo-dev, gazebo-ros, message-runtime, roscpp, std-msgs, wave-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-melodic-usv-gazebo-plugins";
  version = "1.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "vrx-release";
        rev = "release/melodic/usv_gazebo_plugins/1.3.0-1";
        sha256 = "sha256-7PfaDCQ+WcL2lXFdp6zw8SQM2xnROwMF97D/oDBegL0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen gazebo-dev gazebo-ros message-runtime roscpp std-msgs wave-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for simulating Unmanned Surface Vehicles
    Originaly copied from https://github.com/bsb808/usv_gazebo_plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
