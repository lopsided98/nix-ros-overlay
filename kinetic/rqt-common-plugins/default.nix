
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-srv, rqt-launch, rqt-py-console, rqt-bag, rqt-msg, rqt-plot, rqt-shell, rqt-graph, rqt-reconfigure, rqt-top, rqt-image-view, rqt-action, rqt-web, rqt-topic, rqt-publisher, catkin, rqt-console, rqt-dep, rqt-logger-level, rqt-service-caller, rqt-py-common, rqt-bag-plugins }:
buildRosPackage {
  pname = "ros-kinetic-rqt-common-plugins";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/kinetic/rqt_common_plugins/0.4.8-0.tar.gz;
    sha256 = "a13b1827d40b38442e56d9fda372cc2538828711657ec6db3476878252cba673";
  };

  propagatedBuildInputs = [ rqt-srv rqt-action rqt-web rqt-topic rqt-launch rqt-py-console rqt-publisher rqt-bag rqt-msg rqt-console rqt-plot rqt-shell rqt-dep rqt-logger-level rqt-graph rqt-reconfigure rqt-top rqt-service-caller rqt-py-common rqt-image-view rqt-bag-plugins ];
  nativeBuildInputs = [ catkin ];

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
    #license = lib.licenses.BSD;
  };
}
