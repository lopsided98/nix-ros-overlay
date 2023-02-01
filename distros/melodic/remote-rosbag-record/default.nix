
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-remote-rosbag-record";
  version = "0.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yoshito-n-students";
        repo = "remote_rosbag_record-release";
        rev = "release/melodic/remote_rosbag_record/0.0.4-1";
        sha256 = "sha256-jBhblCeYMHjojhhvwM3zrV8yCnMBhHHMsD6MCqx7sOU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosbag roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The remote_rosbag_record package'';
    license = with lib.licenses; [ mit ];
  };
}
