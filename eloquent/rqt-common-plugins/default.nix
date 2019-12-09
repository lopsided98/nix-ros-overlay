
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-plot, rqt-py-common, rqt-topic, rqt-py-console, rqt-image-view, rqt-top, ament-cmake, rqt-console, rqt-msg, rqt-srv, rqt-graph, rqt-publisher, rqt-action, rqt-reconfigure, rqt-service-caller, rqt-shell }:
buildRosPackage {
  pname = "ros-eloquent-rqt-common-plugins";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_common_plugins-release/archive/release/eloquent/rqt_common_plugins/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "01c1d217d91a7d7d208672261bd75f8ccabc2ad4fef4000c54ad76b22cd1e538";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-plot rqt-py-common rqt-topic rqt-image-view rqt-py-console rqt-top rqt-console rqt-graph rqt-msg rqt-reconfigure rqt-publisher rqt-srv rqt-action rqt-service-caller rqt-shell ];
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
