
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-action, rqt-console, rqt-graph, rqt-image-view, rqt-msg, rqt-plot, rqt-publisher, rqt-py-common, rqt-py-console, rqt-reconfigure, rqt-service-caller, rqt-shell, rqt-srv, rqt-top, rqt-topic }:
buildRosPackage {
  pname = "ros-foxy-rqt-common-plugins";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rqt_common_plugins-release";
        rev = "release/foxy/rqt_common_plugins/1.0.0-1";
        sha256 = "sha256-KjNyLkiWu8q0pheNieDZos6VXPDneiYH4ZrGwufEKGg=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqt-action rqt-console rqt-graph rqt-image-view rqt-msg rqt-plot rqt-publisher rqt-py-common rqt-py-console rqt-reconfigure rqt-service-caller rqt-shell rqt-srv rqt-top rqt-topic ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_common_plugins metapackage provides ROS backend graphical tools suite that can be used on/off of robot runtime.<br/>
    <br/>
    To run any rqt plugins, just type in a single command &quot;rqt&quot;, then select any plugins you want from the GUI that launches afterwards.<br/>
    <br/>
    rqt consists of three following metapackages:<br/>
    <ul>
     <li><a href="http://ros.org/wiki/rqt">rqt</a> - core modules of rqt (ROS GUI) framework. rqt plugin developers barely needs to pay attention to this metapackage.</li>
     <li>rqt_common_plugins (you're here!)</li>
     <li><a href="http://ros.org/wiki/rqt_robot_plugins">rqt_robot_plugins</a> - rqt plugins that are particularly used with robots during their runtime.</li><br/>
    </ul>
   <br/>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
