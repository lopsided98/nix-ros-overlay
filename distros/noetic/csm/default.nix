
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, gsl }:
buildRosPackage {
  pname = "ros-noetic-csm";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/csm-release/archive/release/noetic/csm/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "fe2a7259863aa1f3761ce799b35dedfb332cd0a877a9710c3817ae410cd95e23";
  };

  buildType = "catkin";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin gsl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is a ROS 3rd-party wrapper <a href="http://www.ros.org/reps/rep-0136.html">(see REP-136 for more detail)</a> of Andrea Censi's CSM package. 

    From <a href="http://censi.mit.edu/software/csm/">the official website</a>:
    <ul>
      The C(anonical) Scan Matcher (CSM) is a pure C implementation of a very fast variation of ICP using a point-to-line metric optimized for range-finder scan matching.

      It is robust enough to be used in industrial prototypes of autonomous mobile robotics, for example at Kuka. CSM is used by a variety of people, though it is hard to keep track because of the open source distribution, especially as packaged in ROS. If you use this software for something cool, let me know.
    </ul>'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
