
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-plot, rqt-py-console, rqt-console, rqt-msg, rqt-srv, rqt-action, rqt-service-caller, rqt-shell, rqt-bag, rqt-dep, rqt-py-common, rqt-image-view, rqt-top, rqt-graph, rqt-topic, rqt-launch, catkin, rqt-publisher, rqt-logger-level, rqt-web, rqt-reconfigure, rqt-bag-plugins }:
buildRosPackage {
  pname = "ros-melodic-rqt-common-plugins";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_common_plugins-release/archive/release/melodic/rqt_common_plugins/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "f0c64a0ec07274960b5e4eb9c032c6c439e67a82b0ae25c4cc9d27be2ecacc83";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-plot rqt-py-console rqt-console rqt-msg rqt-srv rqt-action rqt-service-caller rqt-shell rqt-bag rqt-dep rqt-py-common rqt-image-view rqt-top rqt-graph rqt-topic rqt-launch rqt-publisher rqt-web rqt-logger-level rqt-reconfigure rqt-bag-plugins ];
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
