
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, jsk-recognition-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-autoware-msgs";
  version = "1.14.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "autoware-ai";
        repo = "messages-release";
        rev = "release/melodic/autoware_msgs/1.14.0-1";
        sha256 = "sha256-ENK+9lpQNKoVWYST4JEG/7gZyY4SNwkqlrRg1I6m4E8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs jsk-recognition-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
