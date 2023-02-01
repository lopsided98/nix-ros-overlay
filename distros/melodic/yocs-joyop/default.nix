
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-exceptions, ecl-time, geometry-msgs, joy, roscpp, sensor-msgs, std-msgs, yocs-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-joyop";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yocs_joyop/0.8.2-0";
        sha256 = "sha256-GgLVSB0jomDotXGp5VnrjqnhrJS7dAuuIP74ezLWE/Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-exceptions ecl-time geometry-msgs joy roscpp sensor-msgs std-msgs yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Joystick teleoperation for your robot robot core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
