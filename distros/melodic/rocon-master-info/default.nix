
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-bubble-icons, rocon-console, rocon-icons, rocon-python-comms, rocon-python-utils, rocon-std-msgs, rocon-uri, rospy }:
buildRosPackage {
  pname = "ros-melodic-rocon-master-info";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_master_info/0.3.2-0";
        sha256 = "sha256-iFSfbwMiTrXWxQHQOJD0cW6p1oWjxukoS08ny10JQhc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ pythonPackages.rospkg rocon-bubble-icons rocon-console rocon-icons rocon-python-comms rocon-python-utils rocon-std-msgs rocon-uri rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Publish master information - name, description, icon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
