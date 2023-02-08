
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rospy, rosserial-client, rosserial-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosserial-windows";
  version = "0.8.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rosserial-release";
        rev = "release/melodic/rosserial_windows/0.8.0-0";
        sha256 = "sha256-gp+H7MAJnKrsWQ6+6SNH6Yib7lZIBK4E4AfR7GJWY5s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin geometry-msgs nav-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ message-runtime rospy rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Windows platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
