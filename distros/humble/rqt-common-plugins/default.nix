
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-action, rqt-bag, rqt-bag-plugins, rqt-console, rqt-graph, rqt-image-view, rqt-msg, rqt-plot, rqt-publisher, rqt-py-common, rqt-py-console, rqt-reconfigure, rqt-service-caller, rqt-shell, rqt-srv, rqt-topic }:
buildRosPackage {
  pname = "ros-humble-rqt-common-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_common_plugins-release/archive/release/humble/rqt_common_plugins/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4d949634b468347fc8a2949232bb6528e2af63d3e9efd2f02b0f78061458da34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqt-action rqt-bag rqt-bag-plugins rqt-console rqt-graph rqt-image-view rqt-msg rqt-plot rqt-publisher rqt-py-common rqt-py-console rqt-reconfigure rqt-service-caller rqt-shell rqt-srv rqt-topic ];
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
