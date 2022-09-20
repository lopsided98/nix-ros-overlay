
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, nodelet, roscpp, rostest, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-image-rotate";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/image_rotate/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "3d851d658c52efe381146978e95d31fbf0b932fa2ebcd32a2b99e54741834f65";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport nodelet roscpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Contains a node that rotates an image stream in a way that minimizes
      the angle between a vector in some arbitrary frame and a vector in the
      camera frame. The frame of the outgoing image is published by the node.
    </p>
    <p>
      This node is intended to allow camera images to be visualized in an
      orientation that is more intuitive than the hardware-constrained
      orientation of the physical camera. This is particularly helpful, for
      example, to show images from the PR2's forearm cameras with a
      consistent up direction, despite the fact that the forearms need to
      rotate in arbitrary ways during manipulation.
    </p>
    <p>
      It is not recommended to use the output from this node for further
      computation, as it interpolates the source image, introduces black
      borders, and does not output a camera_info.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
