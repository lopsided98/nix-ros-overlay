
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, eigen-stl-containers, geometry-msgs, git, libyamlcpp, pkg-config, roscpp, rosflight-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-rosflight";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rosflight";
        repo = "rosflight-release";
        rev = "release/melodic/rosflight/1.3.1-1";
        sha256 = "sha256-wHL0wqklrW+x4hZ5HgT0gGvnF/W0nwlGuk7H7KQHxhg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin git pkg-config ];
  propagatedBuildInputs = [ boost eigen eigen-stl-containers geometry-msgs libyamlcpp roscpp rosflight-msgs sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing to the ROSflight autopilot firmware over MAVLink'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
