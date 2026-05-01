
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-action, rqt-bag, rqt-bag-plugins, rqt-console, rqt-graph, rqt-image-view, rqt-msg, rqt-plot, rqt-publisher, rqt-py-common, rqt-py-console, rqt-reconfigure, rqt-service-caller, rqt-shell, rqt-srv, rqt-topic }:
buildRosPackage {
  pname = "ros-lyrical-rqt-common-plugins";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_common_plugins-release/archive/release/lyrical/rqt_common_plugins/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "e136d12a8ab36168c519d8d15d67cf658c821b08f0b2aebb2535de4ac485ee6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqt-action rqt-bag rqt-bag-plugins rqt-console rqt-graph rqt-image-view rqt-msg rqt-plot rqt-publisher rqt-py-common rqt-py-console rqt-reconfigure rqt-service-caller rqt-shell rqt-srv rqt-topic ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "rqt_common_plugins metapackage provides ROS backend graphical tools suite that can be used on/off of robot runtime.<br/>
    <br/>
    To run any rqt plugins, just type in a single command \"rqt\", then select any plugins you want from the GUI that launches afterwards.<br/>
    <br/>
    rqt consists of three following metapackages:<br/>
    <ul>
     <li><a href=\"http://ros.org/wiki/rqt\">rqt</a> - core modules of rqt (ROS GUI) framework. rqt plugin developers barely needs to pay attention to this metapackage.</li>
     <li>rqt_common_plugins (you're here!)</li>
     <li><a href=\"http://ros.org/wiki/rqt_robot_plugins\">rqt_robot_plugins</a> - rqt plugins that are particularly used with robots during their runtime.</li><br/>
    </ul>
   <br/>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
