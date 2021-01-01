
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, pythonPackages, rosconsole, roslib }:
buildRosPackage {
  pname = "ros-kinetic-resource-retriever";
  version = "1.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/resource_retriever-release/archive/release/kinetic/resource_retriever/1.12.6-1.tar.gz";
    name = "1.12.6-1.tar.gz";
    sha256 = "20fa51672b8c050c6054e49b081cfacd270f58683705bde6cd6f8edb82d5974c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost curl pythonPackages.rospkg rosconsole roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
