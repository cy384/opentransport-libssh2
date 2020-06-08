include(CheckCSourceCompiles)

# - check_nonblocking_socket_support()
#
# Check for how to set a socket to non-blocking state. There seems to exist
# four known different ways, with the one used almost everywhere being POSIX
# and XPG3, while the other different ways for different systems (old BSD,
# Windows and Amiga).
#
# One of the following variables will be set indicating the supported
# method (if any):
#   HAVE_O_NONBLOCK
#   HAVE_FIONBIO
#   HAVE_IOCTLSOCKET
#   HAVE_IOCTLSOCKET_CASE
#   HAVE_SO_NONBLOCK
#   HAVE_DISABLED_NONBLOCKING
#
# The following variables may be set before calling this macro to
# modify the way the check is run:
#
#  CMAKE_REQUIRED_FLAGS = string of compile command line flags
#  CMAKE_REQUIRED_DEFINITIONS = list of macros to define (-DFOO=bar)
#  CMAKE_REQUIRED_INCLUDES = list of include directories
#  CMAKE_REQUIRED_LIBRARIES = list of libraries to link
#

# TODO FIXME this is a lazy hack
macro(check_nonblocking_socket_support)
  set(HAVE_DISABLED_NONBLOCKING 1)
endmacro()
