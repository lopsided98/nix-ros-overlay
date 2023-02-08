
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-gpio-control";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "cst0";
        repo = "gpio_control-release";
        rev = "release/melodic/gpio_control/1.0.0-1";
        sha256 = "sha256-vpJhG+yiOgyzrMSdffcQy6cAv24qQo0VciIuItxkdI0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control GPIO pins on Raspberry Pi, Nvidia Jetson, and other Linux devices with GPIO pins'';
    license = with lib.licenses; [ asl20 ];
  };
}
