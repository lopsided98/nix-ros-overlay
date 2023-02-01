
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, cv-bridge, cv-camera, geographiclib, geometry-msgs, led-msgs, mavros, mavros-extras, message-generation, nodelet, pythonPackages, ros-pytest, rosbridge-server, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, tf2, tf2-geometry-msgs, tf2-ros, tf2-web-republisher, visualization-msgs, web-video-server }:
buildRosPackage {
  pname = "ros-melodic-clover";
  version = "0.21.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CopterExpress";
        repo = "clover-release";
        rev = "release/melodic/clover/0.21.2-1";
        sha256 = "sha256-2aVGAaeH3hoXp44Yq9uSGE2VRhGp1gcK0Arz5eZjIj8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ ros-pytest ];
  propagatedBuildInputs = [ cv-bridge cv-camera geographiclib geometry-msgs led-msgs mavros mavros-extras message-generation nodelet pythonPackages.lxml rosbridge-server roscpp rospy sensor-msgs std-msgs std-srvs tf tf2 tf2-geometry-msgs tf2-ros tf2-web-republisher visualization-msgs web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Clover package'';
    license = with lib.licenses; [ mit ];
  };
}
