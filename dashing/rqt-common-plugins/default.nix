
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-srv, rqt-action, ament-cmake, rqt-topic, rqt-publisher, rqt-py-console, rqt-graph, rqt-reconfigure, rqt-top, rqt-msg, rqt-service-caller, rqt-console, rqt-image-view, rqt-plot, rqt-py-common, rqt-shell }:
buildRosPackage {
  pname = "ros-dashing-rqt-common-plugins";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_common_plugins-release/archive/release/dashing/rqt_common_plugins/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "470b94463ad57e5e3509f1f1c81429028f63f03a3d6ee118049d7ddfe8c7ea07";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-srv rqt-action rqt-topic rqt-publisher rqt-py-console rqt-graph rqt-reconfigure rqt-top rqt-service-caller rqt-msg rqt-console rqt-image-view rqt-plot rqt-py-common rqt-shell ];
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
